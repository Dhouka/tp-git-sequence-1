# Nom de l'exécutable final
TARGET := bienvenue

# Modules utilisés
MODULE := fonction-bienvenue

# Compilateurs et options
CXX = g++ -c
LD = g++ -o
RM = rm -f
CXXFLAGS = -Wall -std=c++11

# Compilation
all: $(TARGET)

$(TARGET): $(TARGET).o $(MODULE).o
	$(LD) $@ $(TARGET).o $(MODULE).o

$(TARGET).o: $(TARGET).cpp $(MODULE).h
	$(CXX) $(CXXFLAGS) $(TARGET).cpp

$(MODULE).o: $(MODULE).cpp $(MODULE).h
	$(CXX) $(CXXFLAGS) $(MODULE).cpp

clean:
	$(RM) *.o $(TARGET)
