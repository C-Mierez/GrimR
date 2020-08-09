import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grimr/presentation/core/themes/app_themes.dart';
import 'package:grimr/presentation/core/themes/bloc/themes_bloc.dart';
import 'package:grimr/presentation/core/themes/bloc/themes_event.dart';

/* Added an AnimatedContainer as a background, so the transition animation when
  changing colours is smoother.
*/

/* A ListView contains all the different themes defined in AppTheme enum. Each one
is coloured accordingly, and will notify the bloc with an event that changes the
current theme to the new one.

*/
class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('Preferences'),
      ),
      body: AnimatedContainer(
        //? Using this allows the animation to happen.
        //? Having the default values, although correct, the animation does not
        //? happen when they are updated.
        color: Theme.of(context).backgroundColor,
        curve: Curves.easeOut,
        duration: const Duration(seconds: 1),
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: const _SettingsColumn(),
      ),
    );
  }
}

class _SettingsColumn extends StatelessWidget {
  const _SettingsColumn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        const _TitleWidget(
          titleText: 'Themes',
          icon: Icons.color_lens,
        ),
        const Divider(
          height: 10,
          color: Colors.transparent,
        ),
        const _ThemesListView(),
        const Divider(
          height: 20,
          color: Colors.transparent,
        ),
        const _TitleWidget(
          titleText: 'Other stuff soon',
          icon: Icons.build,
        ),
      ],
    );
  }
}

class _TitleWidget extends StatelessWidget {
  final String titleText;
  final IconData icon;

  const _TitleWidget({
    Key key,
    this.titleText,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 8),
            child: Icon(icon),
          ),
          Text(
            titleText,
            style: const TextStyle(fontSize: 30),
          ),
        ],
      ),
    );
  }
}

class _ThemesListView extends StatelessWidget {
  const _ThemesListView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      height: 170,
      child: ListView.builder(
        //padding: const EdgeInsets.all(8.0),
        //? We want to show an option for each value in the enum
        //? aka for each theme defined in the app.
        itemCount: AppTheme.values.length,
        itemBuilder: (context, index) {
          final AppTheme itemAppTheme = AppTheme.values[index];
          final themePrimaryColor = appThemeData[itemAppTheme].primaryColor;
          return Card(
            //margin: EdgeInsets.zero,
            margin: const EdgeInsets.symmetric(vertical: 5),
            color: themePrimaryColor,
            child: ListTile(
              title: Text(
                'Theme $index',
                //textAlign: TextAlign.center,
                //? In order to follow the properties of wether a dark or light theme
                //? is being used, using the copyWith() method is much better
                style: appThemeData[itemAppTheme].textTheme.bodyText1.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              onTap: () async {
                //? Adding a little delay to allow the tap animation to happen before
                //? doing any changes. This leads to better visuals
                await Future.delayed(const Duration(milliseconds: 200));
                BlocProvider.of<ThemesBloc>(context)
                    .add(ThemesEvent.changed(theme: itemAppTheme));
              },
              //? Another way to change the spacing between the elements
              visualDensity: VisualDensity.standard,
            ),
          );
        },
      ),
    );
  }
}
