package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {

	fmt.Println("Starting server")

	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		w.Header().Set("Content-Type", "application/json")
		fmt.Fprintf(w, "{ \"hello\": \"world\" }")
	})

	log.Fatal(http.ListenAndServe(":8080", nil))

}
