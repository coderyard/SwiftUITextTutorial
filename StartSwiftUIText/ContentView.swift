//
//  ContentView.swift
//  StartSwiftUIText
//
//  Created by 김승우 on 2021/11/19.
//

import SwiftUI

struct ContentView: View {
    
    static let dateFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYY년 M월 d일"
        formatter.dateStyle = .long
        return formatter
    }()
    
    var today = Date()
    
    var trueOrFalse: Bool = false
    
    var number: Int = 123
    var body: some View {
        VStack{
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of ")
                .tracking(2)
            // 글자 간격 조정
                .font(.system(.body, design: .rounded))
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .lineSpacing(10)
                .truncationMode(.middle)
            
                .shadow(color: Color.red, radius: 1.5, x: 10, y: 10)
            
            
                .lineLimit(nil)
                .padding(.all, 20)
                .background(Color.yellow)
                .cornerRadius(10)
            
                .padding()
                .background(Color.green)
                .cornerRadius(20)
            // view의 중첩!!
                .padding()
            
            Text("안녕하세요!!").background(Color.gray)
                .foregroundColor(Color.white)
            
            Text("오늘의 날짜입니다 : \(today, formatter: ContentView.dateFormat)")
            
            Text("참 혹은 거짓 : \(String(trueOrFalse))")
            Text("숫자입니다. \(number)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
