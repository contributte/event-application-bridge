![](https://heatbadger.now.sh/github/readme/contributte/event-application-bridge/?deprecated=1)

<p align=center>
    <a href="https://bit.ly/ctteg"><img src="https://badgen.net/badge/support/gitter/cyan"></a>
    <a href="https://bit.ly/cttfo"><img src="https://badgen.net/badge/support/forum/yellow"></a>
    <a href="https://contributte.org/partners.html"><img src="https://badgen.net/badge/sponsor/donations/F96854"></a>
</p>

<p align=center>
    Website 🚀 <a href="https://contributte.org">contributte.org</a> | Contact 👨🏻‍💻 <a href="https://f3l1x.io">f3l1x.io</a> | Twitter 🐦 <a href="https://twitter.com/contributte">@contributte</a>
</p>

## Disclaimer

| :warning: | This project is no longer being maintained. Please use [contributte/event-dispatcher-extra](https://github.com/contributte/event-dispatcher-extra).
|---|---|

| Composer | [`contributte/event-application-bridge`](https://packagist.org/packages/contributte/event-application-bridge) |
|---| --- |
| Version | ![](https://badgen.net/packagist/v/contributte/event-application-bridge) |
| PHP | ![](https://badgen.net/packagist/php/contributte/event-application-bridge) |
| License | ![](https://badgen.net/github/license/contributte/event-application-bridge) |

## Versions

| State       | Version | Branch   | PHP      |
|-------------|---------|----------|----------|
| stable      | `^0.1`  | `master` | `>= 5.6` |

## Documentation

### Usage :tada:

```neon
extensions:
	events: Contributte\EventDispatcher\DI\EventDispatcherExtension
	events2application: Contributte\Events\Bridges\Application\DI\EventApplicationBridgeExtension
```

### Bridge :wrench:

There are several Nette Application events on which you can listen to.

```php
use Contributte\Events\Bridges\Application\Event\ApplicationEvents;
use Contributte\Events\Bridges\Application\Event\ErrorEvent;
use Contributte\Events\Bridges\Application\Event\PresenterEvent;
use Contributte\Events\Bridges\Application\Event\RequestEvent;
use Contributte\Events\Bridges\Application\Event\ResponseEvent;
use Contributte\Events\Bridges\Application\Event\ShutdownEvent;
use Contributte\Events\Bridges\Application\Event\StartupEvent;
```

- `StartupEvent::NAME` && `ApplicationEvents::ON_STARTUP`
- `ShutdownEvent::NAME` && `ApplicationEvents::ON_SHUTDOWN`
- `RequestEvent::NAME` && `ApplicationEvents::ON_REQUEST`
- `PresenterEvent::NAME` && `ApplicationEvents::ON_PRESENTER`
- `ResponseEvent::NAME` && `ApplicationEvents::ON_RESPONSE`
- `ErrorEvent::NAME` && `ApplicationEvents::ON_ERROR`

### Subscriber :bulb:

```php
use Contributte\EventDispatcher\EventSubscriber;
use Contributte\Events\Bridges\Application\Event\RequestEvent;

final class LogRequestSubscriber implements EventSubscriber
{

	/**
	 * @return array
	 */
	public static function getSubscribedEvents()
	{
		return [RequestEvent::NAME => 'onLog'];
	}

	/**
	 * @param RequestEvent $event
	 * @return void
	 */
	public function onLog(RequestEvent $event)
	{
		// Do magic..
	}
}
```


## Development

This package was maintain by these authors.

<a href="https://github.com/f3l1x">
  <img width="80" height="80" src="https://avatars2.githubusercontent.com/u/538058?v=3&s=80">
</a>

-----

Consider to [support](https://contributte.org/partners.html) **contributte** development team.
Also thank you for being used this package.
