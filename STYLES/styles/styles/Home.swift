import SwiftUI

struct Home: View {
    @State var posts: Int = 0
    @State var followers: Int = 0
    @State var following: Int = 0
    let pictures = ["o1", "o2", "o3", "o4", "o5", "o6", "o7", "o8", "o9"]
    let columns = 3

    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .frame(width: 300, height: 100)
                    .cornerRadius(5)
                    .foregroundColor(Color(red: 188/255, green: 137/255, blue: 136/255))
                
                VStack {
                    //inputs username
                    Text("username")
                        .foregroundColor(.black)
                        .offset(x:10,y:50)

                    HStack(spacing: 12) {
                        VStack{
                            //profile pic
                            Image("pic")
                                .resizable()
                                .frame(width: 125, height: 125)
                                .clipShape(Circle())
                                .offset(x: 5, y:-13)
                        }
                        VStack {
                            //shows how many posts there are
                            Text("\(posts)")
                                .font(.custom("AbrilFatface-Regular", size: 12))
                                .foregroundColor(.black)
                            Text("posts")
                                .font(.custom("AbrilFatface-Regular", size: 12))
                                .foregroundColor(.black)
                        }
                        VStack {
                            //shows how many followers there are
                            Text("\(followers)")
                                .font(.custom("AbrilFatface-Regular", size: 12))
                                .foregroundColor(.black)
                            Text("followers")
                                .font(.custom("AbrilFatface-Regular", size: 12))
                                .foregroundColor(.black)
                        }
                        VStack {
                            //shows how many people you're following
                            Text("\(following)")
                                .font(.custom("AbrilFatface-Regular", size: 12))
                                .foregroundColor(.black)
                            Text("following")
                                .font(.custom("AbrilFatface-Regular", size: 12))
                                .foregroundColor(.black)
                        }
                    }
                    .frame(maxWidth: 300, alignment: .leading)
                    .offset(x:-10, y:-2)
                    
                }
            }
            //allows you to scroll to see the photos
            ScrollView {
                LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: columns), spacing: 20) {
                    ForEach(0..<pictures.count, id: \.self) { index in
                        Image(pictures[index])
                            .resizable()
                            .frame(width: 120, height:230)
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    Home()
}
