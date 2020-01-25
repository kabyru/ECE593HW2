import cv2
import numpy as np
import glob

objp = np.zeros((6*9,3), np.float32)
objp[:,:2] = np.mgrid[0:9, 0:6].T.reshape(-1,2)

objpoints = [] # 3d points in real world space
imgpoints = [] # 2d points in image plane.

images = glob.glob('phone.jpg')

for idx, fname in enumerate(images):
    img = cv2.imread(fname)
    print("Opening " + fname + "...")
    img_size = (img.shape[1], img.shape[0])
    gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
    
    # Find the chessboard corners
    isfound, corners = cv2.findChessboardCorners(gray, (9,6), None)
    #print(isfound)
    #print(corners)
    criteria = (cv2.TERM_CRITERIA_EPS + cv2.TERM_CRITERIA_MAX_ITER, 30, 0.001) 
    corners2 = cv2.cornerSubPix(gray,corners,(11,11),(-1,-1),criteria) 

    img = cv2.drawChessboardCorners(img, (9,6), corners2, isfound) 

    # If found, add object points, image points
    if isfound == True:
        objpoints.append(objp)
        imgpoints.append(corners)

    isfound, mtx, dist, rvecs, tvecs = cv2.calibrateCamera(objpoints, imgpoints, img_size, None, None)
    #print(isfound)
    print(mtx)
    #print(dist)
    #print(rvecs)
    #print(tvecs)
    #print("\n")

    #Refine the camera matrix based on a free scaling parameter using cv2.getOptimalNewCameraMatrix function
    h, w = img.shape[:2]
    newcameramtx, roi=cv2.getOptimalNewCameraMatrix(mtx,dist,(w,h),1,(w,h))

    #Get the undistorted image using the cv2. undistortfunction
    #Crop the image using the region of interest obtained from the new camera matrix and show the result and save it.
    dst = cv2.undistort(img, mtx, dist, None, newcameramtx)
    x,y,w,h = roi
    dst = dst[y:y+h, x:x+w]
    cv2.imwrite('calibresult' + fname,dst)

