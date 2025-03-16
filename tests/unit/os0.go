package main

import (
	"fmt"
	"os"
)

func main() {
	// Create a temporary file
	println(0)
	file, err := os.CreateTemp("", "testfile-")
	println(1)
	if err != nil {
		fmt.Printf("Failed to create temp file: %v", err)
		panic("issue")
	}
	defer os.RemoveAll(file.Name()) // Clean up the file afterwards

	// Data to write
	data1 := []byte("Hello, ")
	data2 := []byte("World!")

	// Write data1 at the beginning
	n, err := file.WriteAt(data1, 0)
	if err != nil {
		fmt.Printf("0 WriteAt failed: %v", err)
		panic("issue")
	}
	if n != len(data1) {
		fmt.Printf("1 Expected to write %d bytes, wrote %d", len(data1), n)
		panic("issue")
	}

	// Write data2 at a specific offset
	offset := 7 // Start writing after "Hello, "
	n, err = file.WriteAt(data2, int64(offset))
	if err != nil {
		fmt.Printf("2 WriteAt failed: %v", err)
		panic("issue")
	}
	if n != len(data2) {
		fmt.Printf("3 Expected to write %d bytes, wrote %d", len(data2), n)
		panic("issue")
	}

	// Read back the data to verify
	file.Seek(0, 0)         // Go back to the beginning of the file
	buf := make([]byte, 13) // Buffer to hold the read data
	n, err = file.Read(buf)
	if err != nil {
		fmt.Printf("4 Read failed: %v", err)
		panic("issue")
	}
	if n != len(buf) {
		fmt.Printf("5 Expected to read %d bytes, read %d", len(buf), n)
	}

	expected := "Hello, World!"
	if string(buf) != expected {
		fmt.Printf("6 Expected %q, got %q", expected, string(buf))
		panic("issue")
	}
}
