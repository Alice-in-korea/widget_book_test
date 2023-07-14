import 'package:flutter/material.dart';
import 'package:widget_book_test/style/color.dart';
import 'package:widget_book_test/style/text_style.dart';
import 'package:widgetbook/widgetbook.dart';

void main() {
  runApp(const HotReload());
}

class HotReload extends StatelessWidget {
  const HotReload({super.key});

  @override
  Widget build(BuildContext context) {
    const Locale('en', 'US');

    return Widgetbook.material(
      addons: [
        /// 디바이스 정류
        DeviceFrameAddon(
          devices: [
            Devices.ios.iPhoneSE,
            Devices.ios.iPhone13,
            Devices.ios.iPhone13ProMax,
            Devices.android.samsungGalaxyS20,
            Devices.android.smallTablet,
          ],
          initialDevice: Devices.ios.iPhone13,
        ),

        /// 언어
        LocalizationAddon(
          locales: [
            const Locale('en', 'US'),
            const Locale('ko', 'KR'),
          ],
          localizationsDelegates: [
            DefaultWidgetsLocalizations.delegate,
            DefaultMaterialLocalizations.delegate,
          ],
          initialLocale: const Locale('en', 'US'),
        ),

        /// 텍스트 스케일
        TextScaleAddon(
          scales: [1.0, 1.2, 1.4, 1.6, 1.8, 2.0],
          initialScale: 1,
        ),
      ],
      directories: [
        /// 카테고리화
        WidgetbookCategory(
          name: 'Button',
          children: [
            WidgetbookComponent(
              name: 'Primary Button',
              useCases: [
                WidgetbookUseCase(
                  name: 'L Button',
                  builder: (_) => Center(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(24, 13, 24, 16),
                        child: Text(
                          "지금 몸무게 기록 시작하기",
                          style: MyTextStyle.headline4B,
                        ),
                      ),
                    ),
                  ),
                ),
                WidgetbookUseCase(
                  name: 'M Button',
                  builder: (_) => Center(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(16, 5, 16, 8),
                        child: Text(
                          "지금 몸무게 기록 시작하기",
                          style: MyTextStyle.headline4B,
                        ),
                      ),
                    ),
                  ),
                ),
                WidgetbookUseCase(
                  name: 'S Button',
                  builder: (_) => Center(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(8, 4, 8, 5),
                        child: Text(
                          "지금 몸무게 기록 시작하기",
                          style: MyTextStyle.subtitle1R,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            WidgetbookComponent(
              name: 'Primary Line Buttn',
              useCases: [
                WidgetbookUseCase(
                  name: 'L Button',
                  builder: (_) => Center(
                    child: OutlinedButton(
                      style: ElevatedButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 14),
                        // backgroundColor: style.colors.opn_white,
                        elevation: 0,
                        side: const BorderSide(color: MyColor.blue),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(24),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(24, 13, 24, 16),
                        child: Text(
                          "내 쿠폰 확인하러 가기",
                          style: MyTextStyle.headline4B,
                        ),
                      ),
                    ),
                  ),
                ),
                WidgetbookUseCase(
                  name: 'M Button',
                  builder: (_) => Center(
                    child: OutlinedButton(
                      style: ElevatedButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 14),
                        // backgroundColor: style.colors.opn_white,
                        elevation: 0,
                        side: const BorderSide(color: MyColor.blue),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(24),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(16, 5, 16, 8),
                        child: Text(
                          "내 쿠폰 확인하러 가기",
                          style: MyTextStyle.headline4B,
                        ),
                      ),
                    ),
                  ),
                ),
                WidgetbookUseCase(
                  name: 'S Button',
                  builder: (_) => Center(
                    child: OutlinedButton(
                      style: ElevatedButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 14),
                        // backgroundColor: style.colors.opn_white,
                        elevation: 0,
                        side: const BorderSide(color: MyColor.blue),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(24),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(8, 4, 8, 5),
                        child: Text(
                          "내 쿠폰 확인하러 가기",
                          style: MyTextStyle.subtitle1R,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),

        /// 페이지 별
        WidgetbookComponent(
          name: 'Onboarding',
          useCases: [
            WidgetbookUseCase(
              name: 'Home Page',
              builder: (context) => MyHomePage(
                title: context.knobs
                    .string(label: 'Title', initialValue: 'Village '),
                incrementBy: context.knobs.doubleOrNull
                        .slider(
                            label: 'Increment By',
                            min: 0,
                            initialValue: 5,
                            max: 10,
                            divisions: 10)
                        ?.toInt() ??
                    0,
                countLabel: context.knobs.stringOrNull(
                  label: 'Count Label',
                  initialValue: 'Current Count',
                  description:
                      'This is the text that appears above the current count of increments',
                ),
                iconData: context.knobs.list(
                  label: 'Icon',
                  options: [Icons.add, Icons.crop_square_sharp, Icons.circle],
                ),
                showToolTip: context.knobs.boolean(
                  label: 'Show Increment Tool Tip',
                  description:
                      'This is the tooltip that is displayed when hovering over the increment button',
                  initialValue: true,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class AppThemeData {
  final Color color;

  AppThemeData({
    required this.color,
  });
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
    required this.title,
    this.incrementBy = 1,
    this.countLabel,
    this.iconData,
    this.showToolTip = true,
  }) : super(key: key);

  final String title;
  final int incrementBy;
  final String? countLabel;
  final IconData? iconData;
  final bool showToolTip;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter += widget.incrementBy;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              widget.countLabel ??
                  'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: widget.showToolTip ? 'Increment' : null,
        child: Icon(widget.iconData ?? Icons.add),
      ),
    );
  }
}
