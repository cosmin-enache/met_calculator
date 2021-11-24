# MetCalculator Template

This repository is a template for PlayerData's coding test - please use this as
a starting point.


## The Task

This gem will perform the core calculation for an application that allows a user
to log their exercise and calculate how many calories they have burned.

Your task is to implement a function that takes a user's body weight, activity,
and the duration of the activity, and returns a value (in kcal) for the number
of calories they have burned.

The calculation should use the "Metabolic Equivalent of Task" method to calculate
calories burned:

```
Kcal ~= METValue * bodyMassKg * timePerformingHours
```

Initially, you should implement this for the following activities:

| Activity             | MET Value |
|----------------------|-----------|
| Running              | 8         |
| Cycling              | 7.5       |
| Swimming (Freestyle) | 5.8       |

The interface to the gem should look something like this:

```rb
MetCalculator.calories(activity, body_mass_kg, time_performing_hours)
# => float

# e.g.
MetCalculator.calories(:running, 80, 1.0)
# => 640
```

## Development

1) Forking and check out the repo
2) Run `bin/setup` to install dependencies.
3) Run `rake spec` to run the tests.

You can also run `bin/console` for an interactive prompt that will allow you to experiment.

## License

This template is available as open source under the terms of the
[MIT License](https://opensource.org/licenses/MIT).
