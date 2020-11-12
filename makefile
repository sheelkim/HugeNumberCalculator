IHMHUGENUMBER = IHMHugeNumber/ScanHugeNumber.o IHMHugeNumber/ShowHugeNumber.o

TYPE = UseHugeNumber/Type/HugeFloat.o UseHugeNumber/Type/HugeInt.o UseHugeNumber/Type/HugeUnsignedInt.o \
		
OPERATOR = UseHugeNumber/Operator/HugeFloatOperator.o UseHugeNumber/Operator/HugeIntOperator.o \
		UseHugeNumber/Operator/HugeUnsignedIntOperator.o

DATATYPES = DataTypes/DoublyLinkedList.o

OBJS = main.o $(IHMHUGENUMBER) $(TYPE) $(OPERATOR) $(DATATYPES)


hugeNumberCalculator: $(OBJS)
	gcc $(OBJS) -o hugeNumberCalculator


main.o : UseHugeNumber/Type/HugeFloat.h \
		UseHugeNumber/Type/HugeInt.h \
		UseHugeNumber/Type/HugeUnsignedInt.h 
		main.c
	gcc -c -g -Wall main.c -o main.o
	
#IHMHUGENUMBER
IHMHugeNumber/ScanHugeNumber.o : IHMHugeNumber/ScanHugeNumber.h \
								UseHugeNumber/Type/HugeInt.h \
								IHMHugeNumber/ScanHugeNumber.c
	gcc -c -g -Wall IHMHugeNumber/ScanHugeNumber.c -o IHMHugeNumber/ScanHugeNumber.o

IHMHugeNumber/ShowHugeNumber.o : IHMHugeNumber/ShowHugeNumber.h \
								UseHugeNumber/Type/HugeFloat.h \
								UseHugeNumber/Type/HugeInt.h \
								UseHugeNumber/Type/HugeUnsignedInt.h \
								IHMHugeNumber/ShowHugeNumber.c
	gcc -c -g -Wall IHMHugeNumber/ShowHugeNumber.c -o IHMHugeNumber/ShowHugeNumber.o

#TYPE
UseHugeNumber/Type/HugeFloat.o : UseHugeNumber/Type/HugeFloat.h \
								UseHugeNumber/Type/HugeInt.h \
								UseHugeNumber/Type/HugeFloat.c
	gcc -c -g -Wall UseHugeNumber/Type/HugeFloat.c -o UseHugeNumber/Type/HugeFloat.o

UseHugeNumber/Type/HugeInt.o : UseHugeNumber/Type/HugeInt.h \
								UseHugeNumber/Type/HugeUnsignedInt.h \
								UseHugeNumber/Type/HugeInt.c
	gcc -c -g -Wall UseHugeNumber/Type/HugeInt.c -o UseHugeNumber/Type/HugeInt.o
	
UseHugeNumber/Type/HugeUnsignedInt.o : UseHugeNumber/Type/HugeUnsignedInt.h \
								DataTypes/DoublyLinkedList.h \
								UseHugeNumber/Type/HugeUnsignedInt.c
	gcc -c -g -Wall UseHugeNumber/Type/HugeUnsignedInt.c -o UseHugeNumber/Type/HugeUnsignedInt.o
 
#OPERATOR
UseHugeNumber/Operator/HugeFloatOperator.o : UseHugeNumber/Operator/HugeFloatOperator.h \
								UseHugeNumber/Type/HugeFloat.h \
								UseHugeNumber/Operator/HugeFloatOperator.c
	gcc -c -g -Wall UseHugeNumber/Operator/HugeFloatOperator.c -o UseHugeNumber/Operator/HugeFloatOperator.o
 
UseHugeNumber/Operator/HugeIntOperator.o : UseHugeNumber/Operator/HugeIntOperator.h  \
								UseHugeNumber/Type/HugeInt.h \
								UseHugeNumber/Type/HugeUnsignedInt.h \
								UseHugeNumber/Operator/HugeUnsignedIntOperator.h \
								UseHugeNumber/Operator/HugeIntOperator.c
	gcc -c -g -Wall UseHugeNumber/Operator/HugeIntOperator.c -o UseHugeNumber/Operator/HugeIntOperator.o
	
UseHugeNumber/Operator/HugeUnsignedIntOperator.o : UseHugeNumber/Operator/HugeUnsignedIntOperator.h \
								UseHugeNumber/Type/HugeInt.h \
								UseHugeNumber/Type/HugeUnsignedInt.h \
								DataTypes/DoublyLinkedList.h \
								UseHugeNumber/Operator/HugeUnsignedIntOperator.c
	gcc -c -g -Wall UseHugeNumber/Operator/HugeUnsignedIntOperator.c -o UseHugeNumber/Operator/HugeUnsignedIntOperator.o
	
#DATATYPES
DataTypes/DoublyLinkedList.o : DataTypes/DoublyLinkedList.h \
								DataTypes/DoublyLinkedList.c
	gcc -c -g -Wall DataTypes/DoublyLinkedList.c -o DataTypes/DoublyLinkedList.o
	
clean :
		rm $(OBJS)
