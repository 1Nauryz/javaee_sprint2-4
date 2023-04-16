package kz.bitlab.javaee.db;

import java.util.ArrayList;
import java.util.Objects;

public class DBManager {

    private static final ArrayList<Tasks> tasks = new ArrayList<>();
    private static long id = 4;

    static{
        tasks.add(
                new Tasks(
                        1L,
                        "Sport",
                        "GO TO THE GYM",
                        "2023-04-16"
                )
        );
        tasks.add(
                new Tasks(
                        2L,
                        "Create the project",
                        "Mobile app",
                        "2023-04-22"
                )
        );
        tasks.add(
                new Tasks(
                        3L,
                        "Cook",
                        "My favourite food",
                        "2023-04-17"
                )
        );
        tasks.add(
                new Tasks(
                        4L,
                        "Clean",
                        "Clean the home",
                        "2023-04-15"
                )
        );

    }

    public static void addTask(Tasks task) {
        task.setId(id);
        tasks.add(task);
        id++;
    }

    public static Tasks getTask(long id) {
        return tasks.stream().filter(task -> task.getId() == id).findFirst().orElse(null);
    }

    public static ArrayList<Tasks> getAllTasks() {
        return tasks;
    }

    public static void deleteTask(long id) {
        for (int i = 0; i < tasks.size(); i++) {
            if (tasks.get(i).getId() == id) {
                tasks.remove(i);
                break;
            }
        }
    }

    public static void updateTask(Tasks task) {
        for (int i = 0; i < tasks.size(); i++) {
            if (Objects.equals(tasks.get(i).getId(), task.getId())) {
                tasks.set(i, task);
                break;
            }
        }
    }

}
