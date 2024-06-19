import SwiftUI

struct EnterView: View {
    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        VStack {
            Spacer()
            
            Image(colorScheme == .dark ? "enter" : "enter_dark")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            
            Spacer()
            
            Text("Общайтесь с друзьями и близкими легко")
                .font(.Heading2(size: 24))
                .fontWeight(.semibold)
                .foregroundColor(colorScheme == .dark ? .white : .black)
                .multilineTextAlignment(.center)
                .padding()
            
            Spacer()
            
            Button(action: {
                // Действие для основной кнопки
            }) {
                Text("Начать общаться")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.purple)
                    .cornerRadius(25)
            }
            .padding(.horizontal)
            
            Text("Нажимая кнопку продолжить я соглашаюсь с")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            HStack {
                Button(action: {
                    // Действие для Политики Конфиденциальности
                }) {
                    Text("Политикой Конфиденциальности")
                        .font(.footnote)
                        .foregroundColor(.purple)
                }
                
                Text(" и ")
                    .font(.footnote)
                    .foregroundColor(.gray)
                
                Button(action: {
                    // Действие для Условий Использования
                }) {
                    Text("Условиями Использования")
                        .font(.footnote)
                        .foregroundColor(.purple)
                }
            }
            .padding(.bottom, 20)
            .padding(.horizontal)
            
            Spacer().frame(height: 10)
        }
        .padding()
        .background(colorScheme == .dark ? Color.black : Color.white)
        .edgesIgnoringSafeArea(.all)
    }
}

struct WalkthroughView_Previews: PreviewProvider {
    static var previews: some View {
        EnterView()
            .preferredColorScheme(.light) // Пример для светлой темы
        EnterView()
            .preferredColorScheme(.dark)  // Пример для темной темы
    }
}


import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

//#Preview {
//    EnterView()
//}
