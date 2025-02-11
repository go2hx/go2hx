package main

type Values map[string][]string

func (v Values) Set(key, value string) {
	v[key] = []string{value}
}

func main() {
	Values{}.Set("hello", "world")
}
