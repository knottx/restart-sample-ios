//
//  AudioPlayer.swift
//  Restart
//
//  Created by Visarut Tippun on 16/3/22.
//

import Foundation
import AVFoundation

var player: AVAudioPlayer?

func playSound(sound: String, type: String) {
    guard let path = Bundle.main.path(forResource: sound, ofType: type) else { return }
    do {
        player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
        player?.play()
    } catch {
        print(error.localizedDescription)
    }
}
