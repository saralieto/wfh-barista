import SwiftUI

struct ContentView: View {
    var body: some View {
        let vm = ModeViewModel(greetingText: "Choose a mode!", buttonOne: ("Barista", {}), buttonTwo: ("Patron", {}))
        ModeView(viewModel: vm)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
