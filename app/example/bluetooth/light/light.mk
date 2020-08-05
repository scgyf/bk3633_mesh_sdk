NAME := light

$(NAME)_COMPONENTS  += genie_app bluetooth.bt_host bluetooth.bt_mesh yloop cli

$(NAME)_INCLUDES += ../../../../network/bluetooth/bt_mesh/inc/ \
					../../../../network/bluetooth/bt_mesh/inc/api \
					../../../../network/bluetooth/bt_mesh/mesh_model \
					../../../../network/bluetooth/bt_mesh/mesh_model/inc \
					../../../../network/bluetooth/bt_mesh/vendor_model \
					../../../../genie_app
					
$(NAME)_SOURCES  := light.c

#ble = 1
#bt_mesh = 1
#en_bt_smp = 1

# Host configurations
GLOBAL_DEFINES += CONFIG_BLUETOOTH
#GLOBAL_DEFINES += CONFIG_BT_SMP
GLOBAL_DEFINES += CONFIG_BT_TINYCRYPT_ECC
GLOBAL_DEFINES += CONFIG_BT_CONN
#GLOBAL_DEFINES += CONFIG_BT_CENTRAL
GLOBAL_DEFINES += CONFIG_BT_PERIPHERAL
#GLOBAL_DEFINES += CONFIG_BLE_50
GLOBAL_DEFINES += CONFIG_BT_HCI_VS_EXT

# Mesh function select
GLOBAL_DEFINES += CONFIG_BT_MESH
GLOBAL_DEFINES += CONFIG_BT_MESH_PROV
GLOBAL_DEFINES += CONFIG_BT_MESH_PB_ADV
GLOBAL_DEFINES += CONFIG_BT_MESH_PB_GATT
GLOBAL_DEFINES += CONFIG_BT_MESH_PROXY
GLOBAL_DEFINES += CONFIG_BT_MESH_GATT_PROXY
GLOBAL_DEFINES += CONFIG_BT_MESH_RELAY
#GLOBAL_DEFINES += CONFIG_BT_MESH_FRIEND
#GLOBAL_DEFINES += CONFIG_BT_MESH_LOW_POWER
#GLOBAL_DEFINES += CONFIG_BT_MESH_SHELL
#GLOBAL_DEFINES += CONFIG_BT_MESH_BQB
#GLOBAL_DEFINES += CONFIG_BT_MESH_IV_UPDATE_TEST

# Mesh foundation model select
GLOBAL_DEFINES += CONFIG_BT_MESH_CFG_SRV
GLOBAL_DEFINES += CONFIG_BT_MESH_HEALTH_SRV
GLOBAL_DEFINES += MESH_MODEL_HSL_SRV
# Mesh debug message enable
#GLOBAL_DEFINES += USE_BT_MESH_CUSTOM_LOG
GLOBAL_DEFINES += GENIE_DEBUG_COLOR
GLOBAL_DEFINES += MESH_DEBUG_RX
GLOBAL_DEFINES += MESH_DEBUG_TX
GLOBAL_DEFINES += MESH_DEBUG_PROV

#GLOBAL_DEFINES += CONFIG_INIT_STACKS
#GLOBAL_DEFINES += CONFIG_PRINTK

GLOBAL_INCLUDES += ../

MESH_MODEL_GEN_ONOFF_SRV = 1
#MESH_MODEL_DIABLE_TRANS = 1
MESH_MODEL_LIGHTNESS_SRV = 1
MESH_MODEL_CTL_SRV = 1
MESH_MODEL_VENDOR_SRV = 1
MESH_MODEL_HSL_SRV = 1
ALI_SIMPLE_MODLE = 1




