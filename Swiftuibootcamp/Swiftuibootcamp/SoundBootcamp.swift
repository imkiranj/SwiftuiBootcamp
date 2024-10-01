import SwiftUI
import AVKit

class SoundManager{
    
    static let instance = SoundManager()
    
    var player: AVAudioPlayer?
    
    enum soundOption: String {
        case Cow
        case tada
    }
    
    func playsound(sound:soundOption) {
        guard let url = Bundle.main.url(forResource: sound.rawValue, withExtension: ".mp3") else {return}
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
        } catch let error {
            print("Error Playing Sound.\(error.localizedDescription)")
        }
        }
        
    }
struct SoundBootcamp: View {
    
    var body: some View {
        VStack(spacing:30){
            Button("Play Sound 1"){
                SoundManager.instance.playsound(sound: .Cow)
            }
            Button("Play Sound 2"){
                SoundManager.instance.playsound(sound: .tada)
            }
        }
    }
}

#Preview {
    SoundBootcamp()
}


