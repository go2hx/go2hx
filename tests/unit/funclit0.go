package main

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
	b := func(i, j int) bool {
		return people[i].Name < people[j].Name
	}(0, 1)
	if b {
		panic("wrong value")
	}
}
