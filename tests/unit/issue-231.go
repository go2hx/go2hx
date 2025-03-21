package main

// Function that processes a slice of strings
func processStringSlice(slice []string, processFunc func(string) string) []string {
	ch := make(chan string)
	result := make([]string, len(slice))

	go func() {
		for _, v := range slice {
			ch <- processFunc(v)
		}
		close(ch)
	}()

	i := 0
	for v := range ch {
		result[i] = v
		i++
	}

	return result
}

func main() {
	// Example usage of processSlice with string slice
	stringSlice := []string{"a", "b", "c"}
	processedStringSlice := processStringSlice(stringSlice, func(s string) string {
		return s + s
	})
	for i, v := range processedStringSlice {
		switch i {
		case 0:
			if v != "aa" {
				println(i)
				panic("invalid result")
			}
		case 1:
			if v != "bb" {
				println(i)
				panic("invalid result")
			}
		case 2:
			if v != "cc" {
				println(i)
				panic("invalid result")
			}
		}
	}
}
