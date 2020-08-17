package main

import "fmt"

var (
	Version  string
	Revision string
)

func Hello() string {
	return "Hello, World!"
}

func main() {
	fmt.Printf("%v\n", Hello())
}
