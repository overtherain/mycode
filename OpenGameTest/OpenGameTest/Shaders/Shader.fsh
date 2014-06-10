//
//  Shader.fsh
//  OpenGameTest
//
//  Created by Chobits on 14-6-4.
//  Copyright (c) 2014年 Chobits. All rights reserved.
//

varying lowp vec4 colorVarying;

void main()
{
    gl_FragColor = colorVarying;
}
