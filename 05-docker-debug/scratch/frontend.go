package frontend
import (
  "io"
  "net/http"
)
func frontend(w http.ResponseWriter, r *http.Request)  {
  io.WriteString(w, "Hello, frontend!")
}
func main()  {
  http.HandleFunc("/", frontend)
  http.ListenAndServe(":8081", nil)
}