################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../src/blank_gurobi_cpoptimizer_project.cpp 

OBJS += \
./src/blank_gurobi_cpoptimizer_project.o 

CPP_DEPS += \
./src/blank_gurobi_cpoptimizer_project.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	g++ -DIL_STD -DNDEBUG -DILOUSEMT -D_REENTRANT -DILM_REENTRANT -I/opt/gurobi/linux64/include -I/opt/ibm/ILOG/CPLEX/cpoptimizer/include -I/opt/ibm/ILOG/CPLEX/concert/include -O3 -pedantic -Wall -c -fmessage-length=0 -fstrict-aliasing -fexceptions -frounding-math -Wno-long-long -m64 -fPIC -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


