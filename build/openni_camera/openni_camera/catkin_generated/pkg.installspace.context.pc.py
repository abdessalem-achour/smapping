# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/usr/include;/usr/include/ni".split(';') if "${prefix}/include;/usr/include;/usr/include/ni" != "" else []
PROJECT_CATKIN_DEPENDS = "camera_info_manager;dynamic_reconfigure;image_transport;nodelet;roscpp".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lopenni_nodelet;-lopenni_driver;/usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0;/usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0;/usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0;-lOpenNI".split(';') if "-lopenni_nodelet;-lopenni_driver;/usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0;/usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0;/usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0;-lOpenNI" != "" else []
PROJECT_NAME = "openni_camera"
PROJECT_SPACE_DIR = "/home/abdessalem/smapping/install"
PROJECT_VERSION = "1.11.1"
