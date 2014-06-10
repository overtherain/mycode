//
//  Shader.fsh
//  game
//
//  Created by Chobits on 14-5-27.
//  Copyright (c) 2014年 Chobits. All rights reserved.
//

varying lowp vec4 colorVarying;

void main()
{
    gl_FragColor = colorVarying;
}
