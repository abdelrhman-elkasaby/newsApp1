part of 'business_imports.dart';
class Business extends StatefulWidget {
  @override
  _BusinessState createState() => _BusinessState();
}
class _BusinessState extends State<Business> with BusinessData {
  @override
  void initState() {
    onBusinessApiData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericCubit<HomeModel>, GenericState<HomeModel>>(
      bloc: businessCubit,
      builder: (context, state) {
        if(state is GenericUpdateState){
          return ListView.builder(
            itemCount: state.data.articles.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => NewsDetails(index, 'business'))),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                              state.data.articles[index].urlToImage,
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 0.25,
                            ),
                            Container(
                                width: MediaQuery.of(context).size.width * 0.85,
                                child: Text(
                                  state.data.articles[index].title ?? 'no title',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.start,
                                )),
                            Container(
                                width: MediaQuery.of(context).size.width * 0.85,
                                child: Text(
                                  state.data.articles[index].description ??
                                      'no description',
                                  style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.start,
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        }else{
          return Center(child: CircularProgressIndicator(),);
        }
      },
    );
  }
}