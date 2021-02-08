CXXFLAGS=-std=c++17 -Wall

%: %.cpp
	$(CXX) $(CXXFLAGS) -o $@ $< -I .
	./$@
	rm $@
