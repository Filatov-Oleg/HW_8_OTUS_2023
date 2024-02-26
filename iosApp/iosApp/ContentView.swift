import SwiftUI
import shared

struct ContentView: View {
    let greet = Greeting().greet()
    
    @StateObject private var viewModel = NewsViewModel()
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: Array(repeating: .init(), count: 2)) {
                ForEach(viewModel.news, id: \.self.url) { article in
                    VStack {
                        ListArticleCell(article: article)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
            }
            .padding(.horizontal, 20)
        }
        .background(LinearGradient(gradient: Gradient(colors: [.blue, Color(red: 25/255, green: 25/255, blue: 112/255)]), startPoint: .top, endPoint: .bottom))
    }
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}

