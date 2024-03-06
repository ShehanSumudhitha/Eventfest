import 'package:eventmainapp/utils/features/events/models/dummy_data.dart';
import 'package:eventmainapp/utils/features/events/screens/event_widget.dart';
import 'package:eventmainapp/utils/theme/custom_themes/color_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen>
    with TickerProviderStateMixin {
  AnimationController? animationController;
  List<EventWidget> events = [];
  int index = 0;

  _fetchData() {
    int count = EventListData.list.length;
    for (var item in EventListData.list) {
      final Animation<double> animation = Tween<double>(begin: 0, end: 1)
          .animate(CurvedAnimation(
              parent: animationController!,
              curve: Interval((1 / count) * index, 1,
                  curve: Curves.fastOutSlowIn)));
      EventWidget widget = EventWidget(
        item: item,
        animationController: animationController,
        animation: animation,
      );
      events.add(widget);
      widget.animationController?.forward();
      setState(() {
        index++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  Widget _buildBody() {
    return Column(
      children: [
        _buildSearchAppBar(),
        Expanded(
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverList(
                  delegate: SliverChildBuilderDelegate(((context, index) {
                    return Column(
                      children: [_buildSearchUI()],
                    );
                  }), childCount: 1),
                ),
                SliverPersistentHeader(
                    pinned: true,
                    floating: true,
                    delegate: FilterTabHeader(
                      _buildFilterUI(),
                    ))
              ];
            },
            body: _buildContent(),
          ),
        )
      ],
    );
  }

  Widget _buildContent() {
    return Container(
        child: ListView.builder(
            itemCount: events.length,
            padding: EdgeInsets.only(top: 8),
            itemBuilder: (context, index) {
              return events[index];
            }));
  }

  Widget _buildFilterUI() {
    return Stack(children: [
      Container(
        color: Colors.black,
        padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 4),
        child: Row(children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(8),
              child: Text(
                "21 Places Found",
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Material(
            color: Colors.transparent,
            child: InkWell(
              splashColor: grey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(5),
              onTap: () {},
              child: Container(
                padding: EdgeInsets.only(left: 8),
                child: Row(children: [
                  Text("Filter",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 16,
                      )),
                  Container(
                    padding: EdgeInsets.all(8),
                    child: Icon(
                      Icons.sort,
                      color: Colors.white,
                    ),
                  )
                ]),
              ),
            ),
          ),
        ]),
      )
    ]);
  }

  Widget _buildSearchUI() {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 8, top: 15),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(115, 158, 158, 158),
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  BoxShadow(
                      color: grey.withOpacity(0.2),
                      offset: Offset(0, 2),
                      blurRadius: 8)
                ],
              ),
              margin: EdgeInsets.only(right: 16, top: 8, bottom: 8),
              child: Padding(
                padding:
                    EdgeInsets.only(left: 16, right: 16, top: 4, bottom: 4),
                child: TextField(
                  onChanged: (value) {},
                  style: TextStyle(
                    fontSize: 15,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search Location",
                  ),
                ),
              ),
            ),
          ),

          //Search Button
          Container(
            decoration: BoxDecoration(
                color: const Color.fromARGB(115, 158, 158, 158),
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: [
                  BoxShadow(
                      color: grey.withOpacity(0.4),
                      offset: Offset(0, 2),
                      blurRadius: 8)
                ]),
            child: Material(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(5.0),
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Icon(
                    FontAwesomeIcons.magnifyingGlass,
                    size: 14,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildSearchAppBar() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        boxShadow: [
          BoxShadow(
              color: grey.withOpacity(0.8), offset: Offset(0, 2), blurRadius: 8)
        ],
      ),
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top, left: 8, right: 8),
      child: Row(
        children: [
          Container(
            width: AppBar().preferredSize.height + 40,
            height: AppBar().preferredSize.height,
          ),
          Expanded(
            child: Center(
              child: Container(
                child: Text(
                  "Explore",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: AppBar().preferredSize.height + 40,
            height: AppBar().preferredSize.height,
            child: Row(
              children: [
                //filter option button
                Material(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  color: Color.fromARGB(120, 158, 158, 158),
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(5.0),
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Icon(FontAwesomeIcons.filter),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                //Search icon
                Material(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(5.0),
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Icon(Icons.location_city),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));
    _fetchData();
    super.initState();
  }
}

class FilterTabHeader extends SliverPersistentHeaderDelegate {
  final Widget filterUI;
  FilterTabHeader(this.filterUI);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return filterUI;
  }

  @override
  double get maxExtent => 55;

  @override
  double get minExtent => 55;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
