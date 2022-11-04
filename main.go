package main

import (
	"net/http"

	"github.com/cleysonxp/aluraloja/routes"
)

func main() {
	routes.CarregaRotas()
	http.ListenAndServe(":8000", nil)
}
