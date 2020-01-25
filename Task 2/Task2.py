import cv2

#Open the first image in the calibration photos
img = cv2.imread("left01.jpg")
#Define the color gray
gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
#Find the corners in each chessboard image
isfound, corners = cv2.findChessboardCorners(gray, (7,6), None)

print(isfound)
print(corners)

#Increase the corner accuracy using cv2.cornerSubPix function
criteria = (cv2.TERM_CRITERIA_EPS + cv2.TERM_CRITERIA_MAX_ITER, 30, 0.001)
corners2 = cv2.cornerSubPix(gray,corners,(11,11),(-1,-1),criteria)

#Draw the corner on image using cv2.drawChessboardCorners
img = cv2.drawChessboardCorners(img, (7,6), corners2, isfound)

ret,mtx,dist,rvecs,tvecs = cv2.calibrateCamera(objpoints, imgpoints, gray.shape[::-1], None, None)