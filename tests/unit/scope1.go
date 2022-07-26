package main

type Person struct {
	Name string
	Age  int
}

func main() {
	people := []struct {
		Name string
		Age  int
	}{
		{"Gopher", 7},
		{"Alice", 55},
		{"Vera", 24},
		{"Bob", 75},
	}
	_ = people[0].Name
}
