import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product/product_grid.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Product> product = List.generate(10, (index) {
    List<Map<String, dynamic>> items = [
      {'name': 'T-Shirt', 'img': 'https://imgs.search.brave.com/Fu1Ia5GDUKo-8acCy0qrOuhgolaV-ldcSWZ_k_r7KyE/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTUz/MjE3OTM1L3Bob3Rv/L3Qtc2hpcnQuanBn/P3M9NjEyeDYxMiZ3/PTAmaz0yMCZjPUNN/bWJsR0p6cUtvcnRn/RVp0VElLcmNlS0gw/NkRZRmMyNWRlVkZB/ZFA2dzA9', 'description': 'Grey comfortable t-shirt', 'price': 25},
      {'name': 'Jeans', 'img': 'https://imgs.search.brave.com/lXzHkgIcPbqx7Q50_uUSDGeZJB5PGjhO0r43gYBZmeA/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTEz/MjE1NDM3Ny9waG90/by9qZWFucy5qcGc_/cz02MTJ4NjEyJnc9/MCZrPTIwJmM9VDNL/MV9QZGxaeFhJTEtG/dkdrVG1QaUlmNU0y/RWRJeGtxYTc5QUpU/X3cwWT0', 'description': 'Blue jeans isolated', 'price': 40},
      {'name': 'Jacket', 'img': 'https://imgs.search.brave.com/UDKO_KjKcP0iIrc6ljuqclR5oQpEDx250B-wzNuedME/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTU1/MzY4Mzc3L3Bob3Rv/L2Jyb3duLWxlYXRo/ZXItamFja2V0LWlz/b2xhdGVkLW9uLXdo/aXRlLmpwZz9zPTYx/Mng2MTImdz0wJms9/MjAmYz1IaGJya29w/RU5hdkVrTGhEZmRE/U2FxRjhuY1RlLVh6/bmpKeDRvSE1tSGxv/PQ', 'description': 'Brown leather jacket', 'price': 75},
      {'name': 'Hat', 'img': 'https://imgs.search.brave.com/DUXHFAh2VvW9TRcQi2ZEyCNnXKV-GBMACV27iYigy-U/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvNDk3/MDQwMzAxL3Bob3Rv/L3doaXRlLWJhc2Vi/YWxsLWhhdC5qcGc_/cz02MTJ4NjEyJnc9/MCZrPTIwJmM9Q2Rm/alc3R2xGb1VPdlVv/em9lM1VMMGZlMjA1/VjNGY2FDd0R4Zmlw/c1ExZz0', 'description': 'White baseball hat', 'price': 20},
      {'name': 'Sneakers', 'img': 'https://imgs.search.brave.com/8LNKbCPcZcm1SyKOotyESQdERPp-J5Ee81_eYXQv-EQ/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTc1/NTM3NjI1L3Bob3Rv/L3NuZWFrZXJzLXdp/dGgtY2xpcHBpbmct/cGF0aC5qcGc_cz02/MTJ4NjEyJnc9MCZr/PTIwJmM9amZ2MTNZ/ZmFZcEFJek5sTFkw/ZTFkeFZlaXpXc2Fj/b2sza2xKcVQ5X0dl/TT0', 'description': 'Sneakers with clippings', 'price': 60},
      {'name': 'Gloves', 'img': 'https://imgs.search.brave.com/yiOvUOFZRfiy6qGl8-qzh8wGq_gFZAonNpJ-fXlE9lk/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTgy/MjM4ODMwL3Bob3Rv/L3dpbnRlci1nbG92/ZXMuanBnP3M9NjEy/eDYxMiZ3PTAmaz0y/MCZjPTJqZ2RRb09U/VkpTQmRJRFBrSDV2/RVdyekhvQl9kMENC/OXJyZmJtNTN5Tm89', 'description': 'Warm winter gloves', 'price': 15},
      {'name': 'Socks', 'img': 'https://imgs.search.brave.com/1ey57p7ZaIla-0a6a-bYgBcTyYQFDF5E-d-X2PDz7hY/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvNDgz/MTcwMDE3L3Bob3Rv/L3Nwb3J0cy1zb2Nr/cy5qcGc_cz02MTJ4/NjEyJnc9MCZrPTIw/JmM9ZE85Z01XSks3/TndGVkJDUC1YZnZh/MXpDeldfTWs5eGkx/ejBvRUhBYW5CND0', 'description': 'Soft sport socks', 'price': 10},
      {'name': 'Sweater', 'img': 'https://imgs.search.brave.com/Qb2hw4wXOXJNCUi3bgUnE5b27Ec_X5HfpB1SpCd8AvA/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvOTE2/NTY4MzM2L3Bob3Rv/L2ljZWxhbmRpYy1z/d2VhdGVyLmpwZz9z/PTYxMng2MTImdz0w/Jms9MjAmYz1zUVVW/bjdiQlNySHNabmV1/cjQxamR2OE9Jal8y/Y2xhbjRIdTV0QVkt/eTg0PQ', 'description': 'Cozy cashmere sweater', 'price': 50},
      {'name': 'Coat', 'img': 'https://imgs.search.brave.com/vDpD-50lBnh30Cf5jfoikF8n75PncSkv-C2k-8SzBCc/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvODk4/ODYzMjMvcGhvdG8v/Y29hdC5qcGc_cz02/MTJ4NjEyJnc9MCZr/PTIwJmM9b2t1OWZf/SXZqV2tfaWJxaUY0/dXVZWS1CVnJqdlli/Q21HVVUycHRtaGI0/cz0', 'description': 'A stylish coat', 'price': 30},
      {'name': 'Shorts', 'img': 'https://imgs.search.brave.com/9QGyBqZzGBTL65sTi7lutiPblxFf2qsqHnetfmXUKlM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvNTEw/MzMzNjM5L3Bob3Rv/L21lbnMtc2hvcnRz/LmpwZz9zPTYxMng2/MTImdz0wJms9MjAm/Yz0xRHdEWU85VzQ4/RlhDbnBMZzRSSUwz/NkF3OUJHMUJRdjZr/VXQ1QmRCc2xFPQ', 'description': 'Mans cargo shorts', 'price': 35},
    ];

    return Product(
      name: items[index % items.length]['name'],
      img: items[index % items.length]['img'],
      description: items[index % items.length]['description'],
      price: items[index % items.length]['price'],
    );
  });
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Share',
        child: const Icon(Icons.local_grocery_store_rounded),
      ),
      appBar: AppBar(
        title: Text(
          '195122',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.grey[600],
        centerTitle: true,
      ),
      body: ProductGrid(product: product),
      backgroundColor: Colors.grey[800],
    );
  }
}
