import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["video", "captureButton", "photo"]

  connect() {
    console.log("Camera controller connected");
    const constraints = {
      audio: false,
      video: {
        facingMode: 'environment'
      }
    };

    navigator.mediaDevices.getUserMedia(constraints)
      .then((stream) => {
        this.videoTarget.srcObject = stream;
        this.videoTarget.play();
      })
      .catch((err) => {
        console.error("Error accessing camera: ", err);
      });
  }

  startCamera() {
    // const constraints = {
    //   audio: false,
    //   video: {
    //     facingMode: 'environment'
    //   }
    // };

    // navigator.mediaDevices.getUserMedia(constraints)
    //   .then((stream) => {
    //     this.videoTarget.srcObject = stream;
    //     this.videoTarget.play();
    //   })
    //   .catch((err) => {
    //     console.error("Error accessing camera: ", err);
    //   });
  }
}
