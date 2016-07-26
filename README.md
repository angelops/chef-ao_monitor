# ao_monitor-cookbook

TODO: Enter the cookbook description here.

## Supported Platforms

TODO: List your supported platforms.

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['ao_monitor']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### ao_monitor::default

Include `ao_monitor` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[ao_monitor::default]"
  ]
}
```

## Upstream sources

Hadoop checks from:

  https://github.com/ZipRealty/hadoop-nagios

Mesos checks from:

  https://github.com/ZipRealty/nagios-mesos

## License and Authors

Author:: Justin Alan Ryan (ZipRealty / Realogy) (<juryan@ziprealty.com>)
