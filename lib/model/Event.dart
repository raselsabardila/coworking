class Event {
  static List _data = [
    [
      "Basic Reason ML",
      "California, AS",
      "https://images.unsplash.com/photo-1568148800034-cbca694c5c12?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTZ8fG1hY2hpbmUlMjBsZWFybmluZ3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
    ],
    [
      "React for new",
      "Barcelona, Spain",
      "https://images.unsplash.com/photo-1576936422505-18d321d54d40?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8cmVhY3QlMjBqc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
    ]
  ];

  static void create(List value) {
    Event._data.add(value);
  }

  static List getData(int index) => Event._data[index];

  static int getLenght() => Event._data.length;
}
