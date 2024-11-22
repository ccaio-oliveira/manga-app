import SwiftUI

struct MainLayout<Content: View>: View {
    let content: Content

    // Estado para controlar o menu lateral
    @State private var isSidebarVisible: Bool = false

    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    var body: some View {
        NavigationStack {
            ZStack {
                // Conteúdo Principal
                content
                    .blur(radius: isSidebarVisible ? 5 : 0) // Efeito de desfoque quando o menu lateral está aberto
                
                // Menu Lateral
                if isSidebarVisible {
                    VStack {
                        Spacer()
                        HStack {
                            VStack(alignment: .leading, spacing: 20) {
                                Text("Menu Item 1")
                                Text("Menu Item 2")
                                Text("Menu Item 3")
                                Spacer()
                            }
                            .padding()
                            .frame(width: 200)
                            .background(Color.gray.opacity(0.9))
                            .cornerRadius(10)
                            .shadow(radius: 10)
                            
                            Spacer()
                        }
                        Spacer()
                    }
                    .transition(.move(edge: .leading))
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        withAnimation {
                            isSidebarVisible.toggle()
                        }
                    }) {
                        Image(systemName: "line.horizontal.3") // Ícone do botão
                    }
                }
                ToolbarItem(placement: .principal) {
                    Text("MangaApp") // Nome do App
                        .font(.headline)
                }
            }
        }
    }
}
