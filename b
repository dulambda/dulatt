import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

class Person {
    private String name;
    private int age;

    public Person(String name, int age) {
        this.name = name;
        this.age = age;
    }

    public String getName() {
        return name;
    }

    public int getAge() {
        return age;
    }

    @Override
    public String toString() {
        return name + " (" + age + ")";
    }
}

public class PeopleFilterSort {
    public static void main(String[] args) {
        List<Person> people = new ArrayList<>();
        people.add(new Person("Alice", 25));
        people.add(new Person("Bob", 17));
        people.add(new Person("Charlie", 30));
        people.add(new Person("Diana", 18));

        // Filter age > 18 and sort by name
        List<Person> result = people.stream()
                .filter(p -> p.getAge() > 18)        // only people older than 18
                .sorted((p1, p2) -> p1.getName().compareTo(p2.getName())) // sort by name
                .collect(Collectors.toList());

        System.out.println("People over 18, sorted by name:");
        result.forEach(System.out::println);
    }
}