//
//  PlaySound.swift
//  HoneyMoon UI
//
//  Created by José Javier Cueto Mejía on 16/06/20.
//  Copyright © 2020 José Javier Cueto Mejía. All rights reserved.
//



import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
  if let path = Bundle.main.path(forResource: sound, ofType: type) {
    do {
      audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
      audioPlayer?.play()
    } catch {
      print("ERROR: Could not find and play the sound file!")
    }
  }
}
