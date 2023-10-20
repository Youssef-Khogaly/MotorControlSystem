#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/MotorControlSystem.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/MotorControlSystem.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../PIC18F4620/MotorControlSystem/MCAL_Layer/DeviceConfig/DeviceConfig.c ../PIC18F4620/MotorControlSystem/MCAL_Layer/GPIO/HAL_GPIO.c ../PIC18F4620/MotorControlSystem/MCAL_Layer/I2C/I2C.c ../PIC18F4620/MotorControlSystem/MCAL_Layer/interrupt/external_interrupt/mcal_external_interrupt.c ../PIC18F4620/MotorControlSystem/MCAL_Layer/interrupt/internal_interrupt/mcal_internal_interrupt.c ../PIC18F4620/MotorControlSystem/MCAL_Layer/interrupt/mcal_interrupt_manager.c ../PIC18F4620/MotorControlSystem/MCAL_Layer/MCAL_INIT.c ../PIC18F4620/MotorControlSystem/ECU_layer/ECU_INIT.c ../PIC18F4620/MotorControlSystem/ECU_layer/keypad/keypad.c ../PIC18F4620/MotorControlSystem/ECU_layer/lcd/lcd.c ../PIC18F4620/MotorControlSystem/ECU_layer/PCA9685/PCA9685.c ../PIC18F4620/MotorControlSystem/app.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1395147801/DeviceConfig.p1 ${OBJECTDIR}/_ext/1222372702/HAL_GPIO.p1 ${OBJECTDIR}/_ext/2038777621/I2C.p1 ${OBJECTDIR}/_ext/1479142058/mcal_external_interrupt.p1 ${OBJECTDIR}/_ext/1137624860/mcal_internal_interrupt.p1 ${OBJECTDIR}/_ext/19160628/mcal_interrupt_manager.p1 ${OBJECTDIR}/_ext/666709216/MCAL_INIT.p1 ${OBJECTDIR}/_ext/1156018556/ECU_INIT.p1 ${OBJECTDIR}/_ext/507736633/keypad.p1 ${OBJECTDIR}/_ext/1196338502/lcd.p1 ${OBJECTDIR}/_ext/2074518795/PCA9685.p1 ${OBJECTDIR}/_ext/1954523330/app.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1395147801/DeviceConfig.p1.d ${OBJECTDIR}/_ext/1222372702/HAL_GPIO.p1.d ${OBJECTDIR}/_ext/2038777621/I2C.p1.d ${OBJECTDIR}/_ext/1479142058/mcal_external_interrupt.p1.d ${OBJECTDIR}/_ext/1137624860/mcal_internal_interrupt.p1.d ${OBJECTDIR}/_ext/19160628/mcal_interrupt_manager.p1.d ${OBJECTDIR}/_ext/666709216/MCAL_INIT.p1.d ${OBJECTDIR}/_ext/1156018556/ECU_INIT.p1.d ${OBJECTDIR}/_ext/507736633/keypad.p1.d ${OBJECTDIR}/_ext/1196338502/lcd.p1.d ${OBJECTDIR}/_ext/2074518795/PCA9685.p1.d ${OBJECTDIR}/_ext/1954523330/app.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1395147801/DeviceConfig.p1 ${OBJECTDIR}/_ext/1222372702/HAL_GPIO.p1 ${OBJECTDIR}/_ext/2038777621/I2C.p1 ${OBJECTDIR}/_ext/1479142058/mcal_external_interrupt.p1 ${OBJECTDIR}/_ext/1137624860/mcal_internal_interrupt.p1 ${OBJECTDIR}/_ext/19160628/mcal_interrupt_manager.p1 ${OBJECTDIR}/_ext/666709216/MCAL_INIT.p1 ${OBJECTDIR}/_ext/1156018556/ECU_INIT.p1 ${OBJECTDIR}/_ext/507736633/keypad.p1 ${OBJECTDIR}/_ext/1196338502/lcd.p1 ${OBJECTDIR}/_ext/2074518795/PCA9685.p1 ${OBJECTDIR}/_ext/1954523330/app.p1

# Source Files
SOURCEFILES=../PIC18F4620/MotorControlSystem/MCAL_Layer/DeviceConfig/DeviceConfig.c ../PIC18F4620/MotorControlSystem/MCAL_Layer/GPIO/HAL_GPIO.c ../PIC18F4620/MotorControlSystem/MCAL_Layer/I2C/I2C.c ../PIC18F4620/MotorControlSystem/MCAL_Layer/interrupt/external_interrupt/mcal_external_interrupt.c ../PIC18F4620/MotorControlSystem/MCAL_Layer/interrupt/internal_interrupt/mcal_internal_interrupt.c ../PIC18F4620/MotorControlSystem/MCAL_Layer/interrupt/mcal_interrupt_manager.c ../PIC18F4620/MotorControlSystem/MCAL_Layer/MCAL_INIT.c ../PIC18F4620/MotorControlSystem/ECU_layer/ECU_INIT.c ../PIC18F4620/MotorControlSystem/ECU_layer/keypad/keypad.c ../PIC18F4620/MotorControlSystem/ECU_layer/lcd/lcd.c ../PIC18F4620/MotorControlSystem/ECU_layer/PCA9685/PCA9685.c ../PIC18F4620/MotorControlSystem/app.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/MotorControlSystem.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F4620
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1395147801/DeviceConfig.p1: ../PIC18F4620/MotorControlSystem/MCAL_Layer/DeviceConfig/DeviceConfig.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1395147801" 
	@${RM} ${OBJECTDIR}/_ext/1395147801/DeviceConfig.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1395147801/DeviceConfig.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1395147801/DeviceConfig.p1 ../PIC18F4620/MotorControlSystem/MCAL_Layer/DeviceConfig/DeviceConfig.c 
	@-${MV} ${OBJECTDIR}/_ext/1395147801/DeviceConfig.d ${OBJECTDIR}/_ext/1395147801/DeviceConfig.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1395147801/DeviceConfig.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1222372702/HAL_GPIO.p1: ../PIC18F4620/MotorControlSystem/MCAL_Layer/GPIO/HAL_GPIO.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1222372702" 
	@${RM} ${OBJECTDIR}/_ext/1222372702/HAL_GPIO.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1222372702/HAL_GPIO.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1222372702/HAL_GPIO.p1 ../PIC18F4620/MotorControlSystem/MCAL_Layer/GPIO/HAL_GPIO.c 
	@-${MV} ${OBJECTDIR}/_ext/1222372702/HAL_GPIO.d ${OBJECTDIR}/_ext/1222372702/HAL_GPIO.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1222372702/HAL_GPIO.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2038777621/I2C.p1: ../PIC18F4620/MotorControlSystem/MCAL_Layer/I2C/I2C.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2038777621" 
	@${RM} ${OBJECTDIR}/_ext/2038777621/I2C.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2038777621/I2C.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/2038777621/I2C.p1 ../PIC18F4620/MotorControlSystem/MCAL_Layer/I2C/I2C.c 
	@-${MV} ${OBJECTDIR}/_ext/2038777621/I2C.d ${OBJECTDIR}/_ext/2038777621/I2C.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2038777621/I2C.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1479142058/mcal_external_interrupt.p1: ../PIC18F4620/MotorControlSystem/MCAL_Layer/interrupt/external_interrupt/mcal_external_interrupt.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1479142058" 
	@${RM} ${OBJECTDIR}/_ext/1479142058/mcal_external_interrupt.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1479142058/mcal_external_interrupt.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1479142058/mcal_external_interrupt.p1 ../PIC18F4620/MotorControlSystem/MCAL_Layer/interrupt/external_interrupt/mcal_external_interrupt.c 
	@-${MV} ${OBJECTDIR}/_ext/1479142058/mcal_external_interrupt.d ${OBJECTDIR}/_ext/1479142058/mcal_external_interrupt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1479142058/mcal_external_interrupt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1137624860/mcal_internal_interrupt.p1: ../PIC18F4620/MotorControlSystem/MCAL_Layer/interrupt/internal_interrupt/mcal_internal_interrupt.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1137624860" 
	@${RM} ${OBJECTDIR}/_ext/1137624860/mcal_internal_interrupt.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1137624860/mcal_internal_interrupt.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1137624860/mcal_internal_interrupt.p1 ../PIC18F4620/MotorControlSystem/MCAL_Layer/interrupt/internal_interrupt/mcal_internal_interrupt.c 
	@-${MV} ${OBJECTDIR}/_ext/1137624860/mcal_internal_interrupt.d ${OBJECTDIR}/_ext/1137624860/mcal_internal_interrupt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1137624860/mcal_internal_interrupt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/19160628/mcal_interrupt_manager.p1: ../PIC18F4620/MotorControlSystem/MCAL_Layer/interrupt/mcal_interrupt_manager.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/19160628" 
	@${RM} ${OBJECTDIR}/_ext/19160628/mcal_interrupt_manager.p1.d 
	@${RM} ${OBJECTDIR}/_ext/19160628/mcal_interrupt_manager.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/19160628/mcal_interrupt_manager.p1 ../PIC18F4620/MotorControlSystem/MCAL_Layer/interrupt/mcal_interrupt_manager.c 
	@-${MV} ${OBJECTDIR}/_ext/19160628/mcal_interrupt_manager.d ${OBJECTDIR}/_ext/19160628/mcal_interrupt_manager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/19160628/mcal_interrupt_manager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/666709216/MCAL_INIT.p1: ../PIC18F4620/MotorControlSystem/MCAL_Layer/MCAL_INIT.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/666709216" 
	@${RM} ${OBJECTDIR}/_ext/666709216/MCAL_INIT.p1.d 
	@${RM} ${OBJECTDIR}/_ext/666709216/MCAL_INIT.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/666709216/MCAL_INIT.p1 ../PIC18F4620/MotorControlSystem/MCAL_Layer/MCAL_INIT.c 
	@-${MV} ${OBJECTDIR}/_ext/666709216/MCAL_INIT.d ${OBJECTDIR}/_ext/666709216/MCAL_INIT.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/666709216/MCAL_INIT.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1156018556/ECU_INIT.p1: ../PIC18F4620/MotorControlSystem/ECU_layer/ECU_INIT.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1156018556" 
	@${RM} ${OBJECTDIR}/_ext/1156018556/ECU_INIT.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1156018556/ECU_INIT.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1156018556/ECU_INIT.p1 ../PIC18F4620/MotorControlSystem/ECU_layer/ECU_INIT.c 
	@-${MV} ${OBJECTDIR}/_ext/1156018556/ECU_INIT.d ${OBJECTDIR}/_ext/1156018556/ECU_INIT.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1156018556/ECU_INIT.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/507736633/keypad.p1: ../PIC18F4620/MotorControlSystem/ECU_layer/keypad/keypad.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/507736633" 
	@${RM} ${OBJECTDIR}/_ext/507736633/keypad.p1.d 
	@${RM} ${OBJECTDIR}/_ext/507736633/keypad.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/507736633/keypad.p1 ../PIC18F4620/MotorControlSystem/ECU_layer/keypad/keypad.c 
	@-${MV} ${OBJECTDIR}/_ext/507736633/keypad.d ${OBJECTDIR}/_ext/507736633/keypad.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/507736633/keypad.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1196338502/lcd.p1: ../PIC18F4620/MotorControlSystem/ECU_layer/lcd/lcd.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1196338502" 
	@${RM} ${OBJECTDIR}/_ext/1196338502/lcd.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1196338502/lcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1196338502/lcd.p1 ../PIC18F4620/MotorControlSystem/ECU_layer/lcd/lcd.c 
	@-${MV} ${OBJECTDIR}/_ext/1196338502/lcd.d ${OBJECTDIR}/_ext/1196338502/lcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1196338502/lcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2074518795/PCA9685.p1: ../PIC18F4620/MotorControlSystem/ECU_layer/PCA9685/PCA9685.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2074518795" 
	@${RM} ${OBJECTDIR}/_ext/2074518795/PCA9685.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2074518795/PCA9685.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/2074518795/PCA9685.p1 ../PIC18F4620/MotorControlSystem/ECU_layer/PCA9685/PCA9685.c 
	@-${MV} ${OBJECTDIR}/_ext/2074518795/PCA9685.d ${OBJECTDIR}/_ext/2074518795/PCA9685.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2074518795/PCA9685.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1954523330/app.p1: ../PIC18F4620/MotorControlSystem/app.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1954523330" 
	@${RM} ${OBJECTDIR}/_ext/1954523330/app.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1954523330/app.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1954523330/app.p1 ../PIC18F4620/MotorControlSystem/app.c 
	@-${MV} ${OBJECTDIR}/_ext/1954523330/app.d ${OBJECTDIR}/_ext/1954523330/app.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954523330/app.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/1395147801/DeviceConfig.p1: ../PIC18F4620/MotorControlSystem/MCAL_Layer/DeviceConfig/DeviceConfig.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1395147801" 
	@${RM} ${OBJECTDIR}/_ext/1395147801/DeviceConfig.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1395147801/DeviceConfig.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1395147801/DeviceConfig.p1 ../PIC18F4620/MotorControlSystem/MCAL_Layer/DeviceConfig/DeviceConfig.c 
	@-${MV} ${OBJECTDIR}/_ext/1395147801/DeviceConfig.d ${OBJECTDIR}/_ext/1395147801/DeviceConfig.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1395147801/DeviceConfig.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1222372702/HAL_GPIO.p1: ../PIC18F4620/MotorControlSystem/MCAL_Layer/GPIO/HAL_GPIO.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1222372702" 
	@${RM} ${OBJECTDIR}/_ext/1222372702/HAL_GPIO.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1222372702/HAL_GPIO.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1222372702/HAL_GPIO.p1 ../PIC18F4620/MotorControlSystem/MCAL_Layer/GPIO/HAL_GPIO.c 
	@-${MV} ${OBJECTDIR}/_ext/1222372702/HAL_GPIO.d ${OBJECTDIR}/_ext/1222372702/HAL_GPIO.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1222372702/HAL_GPIO.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2038777621/I2C.p1: ../PIC18F4620/MotorControlSystem/MCAL_Layer/I2C/I2C.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2038777621" 
	@${RM} ${OBJECTDIR}/_ext/2038777621/I2C.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2038777621/I2C.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/2038777621/I2C.p1 ../PIC18F4620/MotorControlSystem/MCAL_Layer/I2C/I2C.c 
	@-${MV} ${OBJECTDIR}/_ext/2038777621/I2C.d ${OBJECTDIR}/_ext/2038777621/I2C.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2038777621/I2C.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1479142058/mcal_external_interrupt.p1: ../PIC18F4620/MotorControlSystem/MCAL_Layer/interrupt/external_interrupt/mcal_external_interrupt.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1479142058" 
	@${RM} ${OBJECTDIR}/_ext/1479142058/mcal_external_interrupt.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1479142058/mcal_external_interrupt.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1479142058/mcal_external_interrupt.p1 ../PIC18F4620/MotorControlSystem/MCAL_Layer/interrupt/external_interrupt/mcal_external_interrupt.c 
	@-${MV} ${OBJECTDIR}/_ext/1479142058/mcal_external_interrupt.d ${OBJECTDIR}/_ext/1479142058/mcal_external_interrupt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1479142058/mcal_external_interrupt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1137624860/mcal_internal_interrupt.p1: ../PIC18F4620/MotorControlSystem/MCAL_Layer/interrupt/internal_interrupt/mcal_internal_interrupt.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1137624860" 
	@${RM} ${OBJECTDIR}/_ext/1137624860/mcal_internal_interrupt.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1137624860/mcal_internal_interrupt.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1137624860/mcal_internal_interrupt.p1 ../PIC18F4620/MotorControlSystem/MCAL_Layer/interrupt/internal_interrupt/mcal_internal_interrupt.c 
	@-${MV} ${OBJECTDIR}/_ext/1137624860/mcal_internal_interrupt.d ${OBJECTDIR}/_ext/1137624860/mcal_internal_interrupt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1137624860/mcal_internal_interrupt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/19160628/mcal_interrupt_manager.p1: ../PIC18F4620/MotorControlSystem/MCAL_Layer/interrupt/mcal_interrupt_manager.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/19160628" 
	@${RM} ${OBJECTDIR}/_ext/19160628/mcal_interrupt_manager.p1.d 
	@${RM} ${OBJECTDIR}/_ext/19160628/mcal_interrupt_manager.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/19160628/mcal_interrupt_manager.p1 ../PIC18F4620/MotorControlSystem/MCAL_Layer/interrupt/mcal_interrupt_manager.c 
	@-${MV} ${OBJECTDIR}/_ext/19160628/mcal_interrupt_manager.d ${OBJECTDIR}/_ext/19160628/mcal_interrupt_manager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/19160628/mcal_interrupt_manager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/666709216/MCAL_INIT.p1: ../PIC18F4620/MotorControlSystem/MCAL_Layer/MCAL_INIT.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/666709216" 
	@${RM} ${OBJECTDIR}/_ext/666709216/MCAL_INIT.p1.d 
	@${RM} ${OBJECTDIR}/_ext/666709216/MCAL_INIT.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/666709216/MCAL_INIT.p1 ../PIC18F4620/MotorControlSystem/MCAL_Layer/MCAL_INIT.c 
	@-${MV} ${OBJECTDIR}/_ext/666709216/MCAL_INIT.d ${OBJECTDIR}/_ext/666709216/MCAL_INIT.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/666709216/MCAL_INIT.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1156018556/ECU_INIT.p1: ../PIC18F4620/MotorControlSystem/ECU_layer/ECU_INIT.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1156018556" 
	@${RM} ${OBJECTDIR}/_ext/1156018556/ECU_INIT.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1156018556/ECU_INIT.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1156018556/ECU_INIT.p1 ../PIC18F4620/MotorControlSystem/ECU_layer/ECU_INIT.c 
	@-${MV} ${OBJECTDIR}/_ext/1156018556/ECU_INIT.d ${OBJECTDIR}/_ext/1156018556/ECU_INIT.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1156018556/ECU_INIT.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/507736633/keypad.p1: ../PIC18F4620/MotorControlSystem/ECU_layer/keypad/keypad.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/507736633" 
	@${RM} ${OBJECTDIR}/_ext/507736633/keypad.p1.d 
	@${RM} ${OBJECTDIR}/_ext/507736633/keypad.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/507736633/keypad.p1 ../PIC18F4620/MotorControlSystem/ECU_layer/keypad/keypad.c 
	@-${MV} ${OBJECTDIR}/_ext/507736633/keypad.d ${OBJECTDIR}/_ext/507736633/keypad.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/507736633/keypad.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1196338502/lcd.p1: ../PIC18F4620/MotorControlSystem/ECU_layer/lcd/lcd.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1196338502" 
	@${RM} ${OBJECTDIR}/_ext/1196338502/lcd.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1196338502/lcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1196338502/lcd.p1 ../PIC18F4620/MotorControlSystem/ECU_layer/lcd/lcd.c 
	@-${MV} ${OBJECTDIR}/_ext/1196338502/lcd.d ${OBJECTDIR}/_ext/1196338502/lcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1196338502/lcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2074518795/PCA9685.p1: ../PIC18F4620/MotorControlSystem/ECU_layer/PCA9685/PCA9685.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/2074518795" 
	@${RM} ${OBJECTDIR}/_ext/2074518795/PCA9685.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2074518795/PCA9685.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/2074518795/PCA9685.p1 ../PIC18F4620/MotorControlSystem/ECU_layer/PCA9685/PCA9685.c 
	@-${MV} ${OBJECTDIR}/_ext/2074518795/PCA9685.d ${OBJECTDIR}/_ext/2074518795/PCA9685.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2074518795/PCA9685.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/1954523330/app.p1: ../PIC18F4620/MotorControlSystem/app.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/_ext/1954523330" 
	@${RM} ${OBJECTDIR}/_ext/1954523330/app.p1.d 
	@${RM} ${OBJECTDIR}/_ext/1954523330/app.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/_ext/1954523330/app.p1 ../PIC18F4620/MotorControlSystem/app.c 
	@-${MV} ${OBJECTDIR}/_ext/1954523330/app.d ${OBJECTDIR}/_ext/1954523330/app.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/1954523330/app.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/MotorControlSystem.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/MotorControlSystem.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -mdebugger=none  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto        $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/MotorControlSystem.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} ${DISTDIR}/MotorControlSystem.X.${IMAGE_TYPE}.hex 
	
else
${DISTDIR}/MotorControlSystem.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/MotorControlSystem.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/MotorControlSystem.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
