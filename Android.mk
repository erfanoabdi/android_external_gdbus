LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	mainloop.c object.c watch.c polkit.c client.c

LOCAL_CFLAGS+=-O3 -DNEED_DBUS_WATCH_GET_UNIX_FD

LOCAL_C_INCLUDES:= \
	$(LOCAL_PATH)/glib

LOCAL_MODULE := libgdbus

include $(BUILD_STATIC_LIBRARY)
