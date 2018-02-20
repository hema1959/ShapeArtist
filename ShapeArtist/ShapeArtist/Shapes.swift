//
//  Shapes.swift
//  ShapeArtist
//
//  Created by HEMA VENKATARAMAN on 19/02/2018.
//  Copyright © 2018 HEMA VENKATARAMAN. All rights reserved.
//

import Foundation
import UIKit

public class Shapes {
    let renderer = UIGraphicsImageRenderer(size: CGSize(width: 512, height: 512))
    
    public init() { }
    
    
    public func drawRectangle() {
        
        let img = renderer.image { ctx in
            //awesome drawing code
            let rectangle = CGRect(x: 0, y:0, width: 512, height: 512)
            ctx.cgContext.setFillColor(UIColor.red.cgColor)
            ctx.cgContext.setStrokeColor(UIColor.black.cgColor)
            ctx.cgContext.setLineWidth(10)
            ctx.cgContext.addRect(rectangle)
            ctx.cgContext.drawPath(using: .fillStroke)
        }
        
    }
    public func drawCircle()
    {
        
        let img = renderer.image { ctx in
            //awesome drawing code
            let rectangle = CGRect(x: 5, y:5, width: 502, height: 502)
            ctx.cgContext.setFillColor(UIColor.red.cgColor)
            ctx.cgContext.setStrokeColor(UIColor.black.cgColor)
            ctx.cgContext.setLineWidth(10)
            ctx.cgContext.addEllipse(in: rectangle)
            ctx.cgContext.drawPath(using: .fillStroke)
        }
        
    }
    public func drawCheckerBoard()
    {
        
        let img = renderer.image { ctx in
            ctx.cgContext.setFillColor(UIColor.black.cgColor)
            for row in 0 ..< 8 {
                for col in 0 ..< 8 {
                    if((row + col )) % 2 == 0 {
                        ctx.cgContext.fill(CGRect(x: col * 64, y: row * 64, width: 64, height: 64))
                        
                    }
                }
            }
        }
        
    }
    
    public func drawRotatedSquares()
    {
        
        let img = renderer.image { ctx in
            ctx.cgContext.translateBy(x: 256, y: 256)
            
            let rotations = 16
            let amount = Double.pi / Double(rotations)
            
            for _ in 0 ..< rotations {
                ctx.cgContext.rotate(by: CGFloat(amount))
                ctx.cgContext.addRect(CGRect(x: -128, y: -128, width:256, height: 256))
            }
            ctx.cgContext.setStrokeColor(UIColor.black.cgColor)
            ctx.cgContext.strokePath()
        }
        
        
    }
    public func drawLines()
    {
        
        let img = renderer.image { ctx in
            ctx.cgContext.translateBy(x: 256, y: 256)
            ctx.cgContext.translateBy(x: 256, y: 256)
            var first = true
            var length: CGFloat = 256
            for _ in 0 ..< 256 {
                ctx.cgContext.rotate(by: CGFloat.pi / 2)
                
                if first {
                    ctx.cgContext.move(to: CGPoint(x: length, y: 50))
                    first = false
                } else {
                    ctx.cgContext.addLine(to: CGPoint(x: length, y: 50))
                }
                length  *=  0.99
            }
            ctx.cgContext.setStrokeColor(UIColor.black.cgColor)
            ctx.cgContext.strokePath()
            
        }
    }
}

