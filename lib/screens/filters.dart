import 'package:flutter/material.dart';
import 'package:meals/providers/filters_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:meals/screens/tabs.dart';
// import 'package:meals/widgets/main_drawer.dart';

class FiltersScreen extends ConsumerWidget {
  //ConsumerStatefulWidget {
  const FiltersScreen({
    super.key, //required this.currentFilters
  });

  //final Map<Filter, bool> currentFilters;

//都注释掉，改通过provider管理本地状态 为 直接在provider里管理状态
//然后更新provider的状态再来更新本地状态
//所以把stateful 改成stateless
//   @override
//   ConsumerState<FiltersScreen> createState() {
//     return _FiltersScreenSate();
//   }
// }

// class _FiltersScreenSate extends ConsumerState<FiltersScreen> {
//   var _glutenFreeFilterSet = false;
//   var _lactoseFreeFilterSet = false;
//   var _vegetarianFilterSet = false;
//   var _veganFilterSet = false;

  // @override
  // void initState() {
  //   super.initState();
  //   final activeFilters = ref.read(filterProvider);
  //   _glutenFreeFilterSet = activeFilters[Filter.glutenFree]!;
  //   _lactoseFreeFilterSet = activeFilters[Filter.lactoseFree]!;
  //   _vegetarianFilterSet = activeFilters[Filter.vegetarian]!;
  //   _veganFilterSet = activeFilters[Filter.vegan]!;
  // }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFilters = ref.watch(filterProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      // drawer: MainDrawer(
      //   onSelectScreen: (indentifier) {
      //     Navigator.of(context).pop();
      //     if (indentifier == 'meals') {
      //       Navigator.of(context).pushReplacement(
      //         MaterialPageRoute(
      //           builder: (ctx) => const TabsScreen(),
      //         ),
      //       );
      //     }
      //   },
      // ),
      body:
          //WillPopScope(
          // onWillPop: () async {
          //   ref.read(filterProvider.notifier).setFilters({
          //     Filter.glutenFree: _glutenFreeFilterSet,
          //     Filter.lactoseFree: _lactoseFreeFilterSet,
          //     Filter.vegetarian: _vegetarianFilterSet,
          //     Filter.vegan: _veganFilterSet,
          //   });
          //   //Navigator.of(context).pop({    这里这个可以去掉了，原来用这个主要是传参数
          //   Filter.glutenFree: _glutenFreeFilterSet,
          //   Filter.lactoseFree: _lactoseFreeFilterSet,
          //   Filter.vegetarian: _vegetarianFilterSet,
          //   Filter.vegan: _veganFilterSet,
          // });
          // return true;
          //false;
          // },
          // child:

          Column(
        children: [
          SwitchListTile(
            value: activeFilters[Filter.glutenFree]!,
            //_glutenFreeFilterSet,
            onChanged: (isChecked) {
              // setState(() {
              //   _glutenFreeFilterSet = isChecked;
              // });
              ref
                  .read(filterProvider.notifier)
                  .setFilter(Filter.glutenFree, isChecked);
            },
            title: Text(
              'Gluten-free',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            subtitle: Text(
              'Only include gluten-free meals',
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
          SwitchListTile(
            value: activeFilters[Filter.lactoseFree]!,
            //_glutenFreeFilterSet,
            onChanged: (isChecked) {
              // setState(() {
              //   _glutenFreeFilterSet = isChecked;
              // });
              ref
                  .read(filterProvider.notifier)
                  .setFilter(Filter.lactoseFree, isChecked);
            },
            title: Text(
              'Lactose-free',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            subtitle: Text(
              'Only include lactose-free meals',
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
          SwitchListTile(
            value: activeFilters[Filter.vegetarian]!,
            //_glutenFreeFilterSet,
            onChanged: (isChecked) {
              // setState(() {
              //   _glutenFreeFilterSet = isChecked;
              // });
              ref
                  .read(filterProvider.notifier)
                  .setFilter(Filter.vegetarian, isChecked);
            },
            title: Text(
              'Vegetarian Food',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            subtitle: Text(
              'Only include vegetarian meals',
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
          SwitchListTile(
            value: activeFilters[Filter.vegan]!,
            //_glutenFreeFilterSet,
            onChanged: (isChecked) {
              // setState(() {
              //   _glutenFreeFilterSet = isChecked;
              // });
              ref
                  .read(filterProvider.notifier)
                  .setFilter(Filter.vegan, isChecked);
            },
            title: Text(
              'Vegan',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            subtitle: Text(
              'Only include vegan meals',
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
        ],
      ),
    );
    //)
  }
}
