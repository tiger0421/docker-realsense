# docker-realsense

## Support
- melodic

## Usage
For detail, see [Official(Usage)](https://github.com/IntelRealSense/realsense-ros#usage-instructions).

`
$ roslaunch realsense2_camera rs_camera.launch
`
> This will stream all camera sensors and publish on the appropriate ROS topics.  
> Other stream resolutions and frame rates can optionally be provided as parameters to the 'rs_camera.launch' file.

- RGBD_PointCloud
`
$ roslaunch realsense2_camera rs_camera.launch filters:=pointcloud
`

[Official(RGBD Point Cloud)](https://github.com/IntelRealSense/realsense-ros#rgbd-point-cloud)
