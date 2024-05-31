import { BaseComponent, NAME$d, EventHandler, EVENT_CLOSE, CLASS_NAME_SHOW$8, CLASS_NAME_FADE$5, EVENT_CLOSED } from './bootstrap.esm';

/**
 * ------------------------------------------------------------------------
 * Class Definition
 * ------------------------------------------------------------------------
 */
export class Alert extends BaseComponent {
    // Getters
    static get NAME() {
        return NAME$d;
    } // Public


    close() {
        const closeEvent = EventHandler.trigger(this._element, EVENT_CLOSE);

        if (closeEvent.defaultPrevented) {
            return;
        }

        this._element.classList.remove(CLASS_NAME_SHOW$8);

        const isAnimated = this._element.classList.contains(CLASS_NAME_FADE$5);

        this._queueCallback(() => this._destroyElement(), this._element, isAnimated);
    } // Private


    _destroyElement() {
        this._element.remove();

        EventHandler.trigger(this._element, EVENT_CLOSED);
        this.dispose();
    } // Static


    static jQueryInterface(config) {
        return this.each(function() {
            const data = Alert.getOrCreateInstance(this);

            if (typeof config !== 'string') {
                return;
            }

            if (data[config] === undefined || config.startsWith('_') || config === 'constructor') {
                throw new TypeError(`No method named "${config}"`);
            }

            data[config](this);
        });
    }

}
