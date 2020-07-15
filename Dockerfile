FROM osrf/ros:melodic-desktop-full

USER root
# init workspace
WORKDIR /root/catkin_ws/src
ENV DEBIAN_FRONTEND=noninteractive
RUN /bin/bash -c '. /opt/ros/melodic/setup.bash; catkin_init_workspace'


# install requirements and clone repo
RUN sed -i 's#http://tw.archive.ubuntu.com/#http://archive.ubuntu.com/#' /etc/apt/sources.list && \
    apt update && \
    apt install -y \
	libssl-dev \
	libusb-1.0-0-dev \
	pkg-config \
	libgtk-3-dev \
	libglfw3-dev \
	libgl1-mesa-dev \
	libglu1-mesa-dev \ 
	ros-melodic-realsense2-description \
	ros-melodic-realsense2-camera \
    && \
    apt upgrade -y && \
    apt autoremove -y && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

RUN echo source /opt/ros/melodic/setup.bash >> /root/.bashrc

WORKDIR /root
CMD ["/bin/bash"]

