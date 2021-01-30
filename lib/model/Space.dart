class Space {
  static List _data = [
    [
      "Roemah Nenek",
      "Bandung, Indonesia",
      52,
      4,
      "https://images.unsplash.com/photo-1506429937242-f846f7c03553?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8d29vZGVuJTIwaG91c2V8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
    ],
    [
      "Cozy Motel",
      "Radiator Springs, AS",
      21,
      3,
      "https://images.unsplash.com/photo-1560111137-11374746a448?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8bW90ZWx8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
    ],
    [
      "Paradise Hotel",
      "Tokyo, Japan",
      102,
      5,
      "https://images.unsplash.com/photo-1504822351073-6e8cd7881069?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fGphcGFuJTIwaG90ZWx8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
    ]
  ];

  static void create(List value) {
    Space._data.add(value);
  }

  static List getData(int index) => Space._data[index];

  static int getLenght() => Space._data.length;
}
