import SwiftUI

struct ModeView: View {
    let viewModel: ModeViewModel
    
    var body: some View {
        VStack {
            Text(viewModel.greetingText)
            Button(viewModel.buttonOne.0) {
                print(viewModel.buttonOne.1())
            }.buttonStyle(.bordered)
                .tint(.brown)
                .cornerRadius(8.0)
                .padding()
            Button(viewModel.buttonTwo.0) {
                print(viewModel.buttonTwo.1())
            }.buttonStyle(.bordered)
                .tint(.gray)
                .cornerRadius(8.0)
                .padding()
        }
    }
}

struct ModeView_Previews: PreviewProvider {
    static var previews: some View {
        let vm = ModeViewModel(greetingText: "Choose a mode!", buttonOne: ("Barista", {}), buttonTwo: ("Patron", {}))
        ModeView(viewModel: vm)
    }
}


class ModeViewModel {
    typealias Button = (String, (() -> Void))
    
    var greetingText: String
    var buttonOne: Button
    var buttonTwo: Button
    
    public init(greetingText: String, buttonOne: Button, buttonTwo: Button) {
        self.greetingText = greetingText
        self.buttonOne = buttonOne
        self.buttonTwo = buttonTwo
    }
}
