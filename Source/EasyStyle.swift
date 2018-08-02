// MIT License
//
// Copyright (c) 2018 0ber
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
//
// https://github.com/0ber/EasyStyle
//  Created by 0ber on 02/08/2018.
//

import UIKit

public protocol StyleProtocol {
    associatedtype ViewType
    
    typealias Style = (ViewType) -> ViewType
    var style: Style { get }
    
    init(style: @escaping Style)
}

// MARK: Operators
public func +<T>(f1: @escaping (T) -> T, f2: @escaping (T) -> T) -> (T) -> T {
    return { label in f2(f1(label)) }
}

public func +<View: StyleProtocol>(l1: View, l2: View) -> View {
    return View(style: { label in
        return l2.style(l1.style(label))
    })
}

infix operator <<<: AssignmentPrecedence
public func <<<<View: StyleProtocol>(style: View, f2: @escaping (View.ViewType) -> View.ViewType) -> View {
    return View(style: { label in
        return f2(style.style(label))
    })
}

