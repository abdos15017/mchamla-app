import 'package:first_app/ui/widgets/text-field-input.dart';
import 'package:flutter/material.dart';
import 'package:first_app/utilities/constants.dart';
import 'package:gap/gap.dart';
import '../widgets/double_text_widget.dart';


class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  static const String id = 'HomeScreen';

  @override
  State<SearchPage> createState() => _SearchScreenState();
}


class _SearchScreenState extends State<SearchPage> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const Gap(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome to Mchamla',
                        style: headLineStyle3,
                      ),
                      const Gap(5),
                      Text(
                        'Book Tickets',
                        style: headLineStyle1,
                      ),
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/img/logo_app.png'))),
                  ),
                ],
              ),
              const Gap(25),
              Container(
                padding:
                const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD)),
                child: Row(
                  children: [
                    const Icon(Icons.search,
                        color: Color(0xFFBFC205)),
                    Text(
                      'Search',
                      style: headLineStyle4,
                    )
                  ],
                ),
              ),
              const Gap(40),
              const AppDoubleTextWidget(bigText: 'Upcoming Flights',smallText: 'View All',)
            ],
          ),
        ),
        const Gap(15),
        /*SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
                children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket)).toList()
            ),
          ),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:
            const AppDoubleTextWidget(bigText: 'Hotels',smallText: 'View All',),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
                children: hotelList.map((singleHotel) => HotelScreen(hotel: singleHotel)).toList()
            ),),
*/
      ],
    );
    /*return Flexible(
      flex: 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Text(
                'Let\'s find your trip!',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 20, right: 20, top: 50),
            padding: EdgeInsets.only(left: 20, right: 20),
            height: 54,
            child: departField(),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            padding: EdgeInsets.only(left: 20, right: 20),
            height: 54,
            child: arrField(),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            padding: EdgeInsets.only(left: 20, right: 20),
            height: 54,
            child: dateField(),
          ),
          const SizedBox(height: 4.0),
        ],
      ),
    );*/
  }
  Widget departField() => TextInputField(
    isPassword: false,
    icon: Icons.my_location,
    hint: "Enter departure",
    inputType: TextInputType.text,
    inputAction: TextInputAction.next,
  );
  Widget arrField() => TextInputField(
    isPassword: false,
    icon: Icons.location_searching_sharp,
    hint: "Enter Name",
    inputType: TextInputType.text,
    inputAction: TextInputAction.next,
  );
  Widget dateField() => TextInputField(
    isPassword: false,
    icon: Icons.access_time,
    hint: "Enter Name",
    inputType: TextInputType.text,
    inputAction: TextInputAction.next,
  );
}