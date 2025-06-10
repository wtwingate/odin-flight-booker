import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["template", "passengers"]
  static values = { passengerCount: Number }

  add() {
    const clone = this.templateTarget.content.cloneNode(true);

    const labels = clone.querySelectorAll("label");
    for (const label of labels) {
      label.htmlFor = label.htmlFor.replace(/NEW_RECORD/, this.passengerCountValue);
    }

    const inputs = clone.querySelectorAll("input");
    for (const input of inputs) {
      input.id = input.id.replace(/NEW_RECORD/, this.passengerCountValue);
      input.name = input.name.replace(/NEW_RECORD/, this.passengerCountValue);
    }

    this.passengersTarget.appendChild(clone);

    this.passengerCountValue++;
  }
}
