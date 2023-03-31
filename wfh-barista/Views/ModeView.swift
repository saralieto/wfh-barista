import SwiftUI

struct ModeView: View {
    let viewModel: ModeViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                Text(viewModel.greetingText).italic()

                NavigationLink {
                    BaristaView()
                } label: {
                    Text(viewModel.buttonOne.0)
                }.tint(.brown)
                    .cornerRadius(8.0)
                    .padding()
                    .buttonStyle(.bordered)
                NavigationLink {
                    BaristaView()
                } label: {
                    Text(viewModel.buttonTwo.0)
                }.tint(.gray)
                    .cornerRadius(8.0)
                    .padding()
                    .buttonStyle(.bordered)
                    .navigationBarHidden(true)
            }
        }
    }
}

struct BaristaView: View {
    var body: some View {
        VStack {
            NavigationLink {
                BaristaView2()
            } label: {
                Text("BV1")
            }
        }
    }
}

struct PatronView: View {
    var body: some View {
        VStack {
            NavigationLink {
                BaristaView2()
            } label: {
                Text("Patron View")
            }
        }
    }
}

struct BaristaView2: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("☕️☕️")
            }
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
