package main

import (
	"testing"
)

func TestHello(t *testing.T) {
	result := Hello()
	if result != "Hello, World!" {
		t.Errorf("Hello() = %v; want 'Hello, World!'", result)
	}
}
