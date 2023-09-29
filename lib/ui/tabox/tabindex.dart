import 'package:block/cubits/tab_cubit/landing_page_state.dart';
import 'package:block/cubits/tab_cubit/tabbox_cubit.dart';
import 'package:block/ui/tabox/screen_two.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../cubits/tab_cubit/landing_page_event.dart';
import '../select_tabs/tabs_select.dart';
import 'login_screen.dart';
List<BottomNavigationBarItem>bottomNavItems= const <BottomNavigationBarItem>[
  BottomNavigationBarItem(icon: Icon(Icons.person),label: "Login page"),
  BottomNavigationBarItem(icon: Icon(Icons.content_paste_search_outlined),label: "Text fields "),
  BottomNavigationBarItem(icon: Icon(Icons.tab),label: "Tab filds "),
];
const List<Widget>bottomNawScreen=[
  Login_Page(),
  ScreenTwo(),
  SingleFromTabs(),
];
class Tabbox extends StatelessWidget{
  const Tabbox({super.key});
  @override
  Widget build(BuildContext context){
       return BlocConsumer<LandingPageBlock,LandingPagestate>(listener: (context ,state){},builder:(context ,state){
         return Scaffold(
           body: Center(child: bottomNawScreen.elementAt(state.tabindex),),
           bottomNavigationBar: BottomNavigationBar(
             items: bottomNavItems,
             currentIndex: state.tabindex,
             selectedItemColor: Theme.of(context).colorScheme.primary,
             onTap: (index){
               BlocProvider.of<LandingPageBlock>(context).add(Tanchange(tabIndex: index));
             },
           ),
         );
       });
  }
}