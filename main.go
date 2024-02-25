package main

import (
	"fmt"
	"net/http"
)

func helloHandler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprint(w, "ArgoCD Golang!")
}

func main() {
	http.HandleFunc("/", helloHandler)
	if err := http.ListenAndServe(":8081", nil); err != nil {
		fmt.Printf("Sever error: %v\n", err)
	}
}
