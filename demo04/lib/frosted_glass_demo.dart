import 'package:flutter/material.dart';
import 'dart:ui';

class FrostedGlassDemo extends StatelessWidget {
  const FrostedGlassDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // ConstrainedBox约束性盒子,添加额外的约束条件在child上
          ConstrainedBox(
            constraints: const BoxConstraints.expand(),
            child: Image.network(
              "https://img2.baidu.com/it/u=3179332216,1060012622&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=889",
              fit: BoxFit.cover,
            ),
          ),
          Center(
            // ClipRect可裁切的矩形
            child: ClipRect(
              // BackdropFilter背景过滤器
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                // Opacity透明度
                child: Opacity(
                  opacity: 0.5,
                  child: Container(
                    width: 500,
                    height: 700,
                    decoration: BoxDecoration(color: Colors.grey.shade200),
                    child: Center(
                      child: Text(
                        "派大星",
                        style: Theme.of(context).textTheme.headline3,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
