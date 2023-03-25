include vendor/epic/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/epic/config/BoardConfigQcom.mk
endif

include vendor/epic/config/BoardConfigSoong.mk
