#export ALLOW_MISSING_DEPENDENCIES=true
#export BUILD_BROKEN_USES_BUILD_COPY_HEADERS=true
#export BUILD_BROKEN_DUP_RULES=true
export SELINUX_IGNORE_NEVERALLOWS=true
#export PRODUCT_BROKEN_VERIFY_USES_LIBRARIES=true
export WITH_GAPPS=true
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
export CCACHE_DIR=/home/julival/ccache
ccache -M 100G -F 0

