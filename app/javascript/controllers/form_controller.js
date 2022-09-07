import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="form"
export default class extends Controller {
  static targets = ["submit", "question"]

  connect() {
    console.log('Im connected')
    console.log(this.submitTarget)
    console.log(this.questionTargets)
  }

  validate() {
    console.log("Logged")
    let valid_form = this.questionTargets.every((q) => {
      return q.querySelectorAll("input:checked").length > 0;
    })
    if (valid_form) {
      this.submitTarget.classList.remove("d-none")
    }
  }
}
